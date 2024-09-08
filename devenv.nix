{ pkgs, lib, config, inputs, ... }:

{
  packages = (with pkgs; [ 
    jupyter-all
  ]) ++ (with pkgs.python311Packages; [
    scikit-learn
    catboost
    pandas
    polars
    numpy
    seaborn
    matplotlib
    plotly
    kaggle
  ]);

  languages.python = {
    enable = true;
    # version = "3.11.5";
    venv.enable = true;
    venv.requirements = ''
      clearml
      fasteda
      optuna
    '';

    libraries = [ pkgs.cairo ];
  };
}
