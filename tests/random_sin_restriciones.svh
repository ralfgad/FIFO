//----------------------------------------------------------------------
//                   Mentor Graphics Corporation
//----------------------------------------------------------------------
// Project         : fifo_shift_2020
// Unit            : random_sin_restriciones
// File            : random_sin_restriciones.svh
//----------------------------------------------------------------------
// Created by      : rgadea
// Creation Date   : 2020/05/15
//----------------------------------------------------------------------
// Title: 
//
// Summary:
//
// Description:
//
//----------------------------------------------------------------------

//----------------------------------------------------------------------
// random_sin_restriciones
//----------------------------------------------------------------------
class random_sin_restriciones extends test_base;

  // factory registration macro
  `uvm_component_utils(random_sin_restriciones)    

  //--------------------------------------------------------------------
  // new
  //-------------------------------------------------------------------- 
  function new(string name = "random_sin_restriciones",
               uvm_component parent = null);
    super.new(name, parent);
  endfunction: new

  //--------------------------------------------------------------------
  // build_phase
  //-------------------------------------------------------------------- 
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // --- Example code ---
    set_report_verbosity_level_hier(UVM_MEDIUM);
    // --------------------
  endfunction: build_phase

  //--------------------------------------------------------------------
  // run_phase
  //-------------------------------------------------------------------- 
  virtual task run_phase(uvm_phase phase);

    llenado_vaciado_sin_restricciones_vseq vseq = llenado_vaciado_sin_restricciones_vseq::type_id::create("vseq");
    
    phase.raise_objection(this);
    `uvm_info({get_type_name(),":run"}, "Starting test...", UVM_LOW)
    
    //Connect sequence to sequencer and start
    init_vseq(vseq);  // Using method from test base class to assign sequence handles   
    vseq.start(null); // null because no target sequencer
      
    // Can add other vsequences and start them in a serial fashion or
    // start them in parallel using one of the fork/join variants
    // This works because start() is a blocking task.

    `uvm_info({get_type_name(),":run"}, "... test completed", UVM_LOW)
    phase.drop_objection(this);

  endtask: run_phase

endclass: random_sin_restriciones

