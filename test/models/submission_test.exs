defmodule WebgeeksRaffle.SubmissionTest do
  use WebgeeksRaffle.ModelCase

  alias WebgeeksRaffle.Submission

  @valid_attrs %{email: "some content", first_name: "some content", job_title: "some content", last_name: "some content", twitter_handle: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Submission.changeset(%Submission{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Submission.changeset(%Submission{}, @invalid_attrs)
    refute changeset.valid?
  end
end
