ENTITY sim IS END sim;

ARCHITECTURE s OF sim IS
    COMPONENT latch_sim IS END COMPONENT;
BEGIN

    latch_sim_inst: latch_sim;

END ARCHITECTURE s;
