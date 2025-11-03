LIBRARY ieee;
use ieee.std_logic_1164.ALL;

-- Testbench to simulate the latch

ENTITY latch_sim IS END latch_sim;

ARCHITECTURE sim OF latch_sim IS 
    SIGNAL int_s : STD_LOGIC;
    SIGNAL int_r : STD_LOGIC;
    SIGNAL int_e : STD_LOGIC;
    SIGNAL int_q : STD_LOGIC;
    SIGNAL int_qPrime : STD_LOGIC;

    COMPONENT latch PORT(
        i_set, i_reset : IN STD_LOGIC;
        i_enable : IN STD_LOGIC;
        o_q, o_qPrime : OUT STD_LOGIC
    );
    END COMPONENT;
BEGIN

    -- Instantiate the latch to test
    testLatch : latch
    PORT MAP (
        i_set => int_s,
        i_reset => int_r,
        i_enable => int_e,
        o_q => int_q,
        o_qPrime =>  int_qPrime
     );


    -- Behaviourally simulate a range of inputs for the latch
    sim: PROCESS IS
    BEGIN

        -- reset
        int_s <= '0'; int_r <= '1'; int_e <= '1'; WAIT FOR 10 NS;
        assert int_q = '0';
        
        -- set reset with no enable
        int_s <= '1'; int_r <= '0'; int_e <= '0'; WAIT FOR 10 NS;
        assert int_q = '0';
        int_s <= '0'; int_r <= '1'; int_e <= '0'; WAIT FOR 10 NS;
        assert int_q = '0';

        -- set reset with enable
        int_s <= '1'; int_r <= '0'; int_e <= '1'; WAIT FOR 10 NS;
        assert int_q = '1';
        int_s <= '0'; int_r <= '0'; int_e <= '1'; WAIT FOR 10 NS;
        assert int_q = '1';

        -- set and disable
        int_s <= '1'; int_r <= '0'; int_e <= '1'; WAIT FOR 10 NS;
        assert int_q = '1';
        int_s <= '0'; int_r <= '0'; int_e <= '0'; WAIT FOR 10 NS;
        assert int_q = '1';

        WAIT;
    END PROCESS sim;
END sim;
