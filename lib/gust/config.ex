defmodule Gust.Config do
  @moduledoc """
  Runtime configuration for Gust.

  ## Configuration options

      # Add custom color names for disambiguation
      config :gust, :custom_colors, ["primary", "secondary", "brand-blue"]

      # Classes that should never be merged (always kept)
      config :gust, :no_merge_classes, ["custom-utility"]

      # Tailwind class prefix (e.g., "tw-" if using prefix: 'tw-' in tailwind.config)
      config :gust, :class_prefix, "tw-"

      # Enable directional decomposition (default: false — opt-in only, see README)
      config :gust, :decompose, true
  """

  @doc "Returns the list of custom color names."
  def custom_colors do
    Application.get_env(:gust, :custom_colors, [])
  end

  @doc "Returns the list of classes that should not be merged."
  def no_merge_classes do
    Application.get_env(:gust, :no_merge_classes, [])
  end

  @doc "Returns the configured class prefix (e.g., \"tw-\"), or empty string if none."
  def class_prefix do
    Application.get_env(:gust, :class_prefix, "")
  end

  @doc "Returns true if directional decomposition is enabled (default: false)."
  def decompose do
    Application.get_env(:gust, :decompose, false)
  end
end
