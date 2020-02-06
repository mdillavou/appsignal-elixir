defmodule Appsignal.WrappedTracer do
  use Wrapper
  alias Appsignal.Tracer

  def create_span(name, parent, pid) do
    add(:create_span, {name, parent, pid})
    Tracer.create_span(name, parent, pid)
  end

  def close_span(span, pid) do
    add(:close_span, {span, pid})
    Tracer.close_span(span, pid)
  end
end
