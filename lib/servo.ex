defmodule Cirlute.Servo do
  @type pwm_opt() :: {term(), non_neg_integer(), pos_integer(), number()}
  @type servo_opts() :: [pwm_opt: pwm_opt()]
  @callback new(non_neg_integer(), servo_opts()) :: {:ok, term()} | {:error, term()}

  @callback set_angle(term(), integer()) :: {:ok, term()} | {:error, term()}
end
