/// <remarks>
/// This unit corresponds to the protobuf schema definition (.proto file) <c>fields.proto</c>.
/// </remarks>
unit uFields;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}

interface

uses
  Work.Connor.Protobuf.Delphi.ProtocGenDelphi.StubRuntime.uProtobufMessage,
  Work.Connor.Protobuf.Delphi.ProtocGenDelphi.StubRuntime.uProtobufUint32,
  Work.Connor.Protobuf.Delphi.ProtocGenDelphi.StubRuntime.uProtobufString;

type
  /// <remarks>
  /// This class corresponds to the protobuf message type <c>MessageX</c>.
  /// </remarks>
  TMessageX = class(TProtobufMessage)
  /// <summary>
  /// Protobuf field number of the protobuf field <c>fieldX</c>.
  /// </summary>
  const PROTOBUF_FIELD_NUMBER_FIELD_X = 1;

  /// <summary>
  /// Protobuf field number of the protobuf field <c>fieldY</c>.
  /// </summary>
  const PROTOBUF_FIELD_NUMBER_FIELD_Y = 3;

  /// <summary>
  /// Holds the decoded value of the protobuf field <c>fieldX</c>.
  /// </summary>
  private var FFieldX: UInt32;

  /// <summary>
  /// Getter for <see cref="FieldX"/>.
  /// </summary>
  /// <returns>The value of the protobuf field <c>fieldX</c></returns>
  /// <remarks>
  /// May be overridden. Overriders shall only add side-effects and must call the ancestor implementation.
  /// </remarks>
  protected function GetFieldX: UInt32; virtual;

  /// <summary>
  /// Setter for <see cref="FieldX"/>.
  /// </summary>
  /// <param name="aValue">The new value of the protobuf field <c>fieldX</c></param>
  /// <remarks>
  /// May be overridden. Overriders shall only add side-effects and must call the ancestor implementation.
  /// </remarks>
  protected procedure SetFieldX(aValue: UInt32); virtual;

  /// <remarks>
  /// This property corresponds to the protobuf field <c>fieldX</c>.
  /// </remarks>
  public property FieldX: UInt32 read GetFieldX write SetFieldX;

  /// <summary>
  /// Holds the decoded value of the protobuf field <c>fieldY</c>.
  /// </summary>
  private var FFieldY: UnicodeString;

  /// <summary>
  /// Getter for <see cref="FieldY"/>.
  /// </summary>
  /// <returns>The value of the protobuf field <c>fieldY</c></returns>
  /// <remarks>
  /// May be overridden. Overriders shall only add side-effects and must call the ancestor implementation.
  /// </remarks>
  protected function GetFieldY: UnicodeString; virtual;

  /// <summary>
  /// Setter for <see cref="FieldY"/>.
  /// </summary>
  /// <param name="aValue">The new value of the protobuf field <c>fieldY</c></param>
  /// <remarks>
  /// May be overridden. Overriders shall only add side-effects and must call the ancestor implementation.
  /// </remarks>
  protected procedure SetFieldY(aValue: UnicodeString); virtual;

  /// <remarks>
  /// This property corresponds to the protobuf field <c>fieldY</c>.
  /// </remarks>
  public property FieldY: UnicodeString read GetFieldY write SetFieldY;

  /// <summary>
  /// Creates an empty <see cref="TMessageX"/> that can be used as a protobuf message.
  /// Initially, all protobuf fields are absent, meaning that they are set to their default values.
  /// </summary>
  /// <remarks>
  /// Protobuf's interpretation of the absence of a field may be counterintuitive for Delphi developers.
  /// For a detailed explanation, see https://developers.google.com/protocol-buffers/docs/proto3#default.
  /// </remarks>
  public constructor Create; override;

  /// <summary>
  /// Destroys the instances and all objects and resources held by it, including the protobuf field values.
  /// </summary>
  /// <remarks>
  /// Developers must ensure that no shared ownership of current field values or further nested embedded objects is held.
  /// </remarks>
  public destructor Destroy; override;

  /// <summary>
  /// Renders all protobuf fields absent by setting them to their default values.
  /// </summary>
  /// <remarks>
  /// The resulting instance state is equivalent to a newly constructed <see cref="TMessageX"/>.
  /// For more details, see the documentation of <see cref="Create"/>.
  /// This procedure may cause the destruction of transitively owned objects.
  /// Developers must ensure that no shared ownership of current field values or further nested embedded objects is held.
  /// </remarks>
  public procedure Clear; override;

  /// <summary>
  /// Encodes the message using the protobuf binary wire format and writes it to a stream.
  /// </summary>
  /// <param name="aDest">The stream that the encoded message is written to</param>
  public procedure Encode(aDest: TStream); override;

  /// <summary>
  /// Fills the message's protobuf fields by decoding the message using the protobuf binary wire format from data that is read from a stream.
  /// </summary>
  /// <param name="aSource">The stream that the data is read from</param>
  /// <remarks>
  /// Protobuf fields that are not present in the read data are rendered absent by setting them to their default values.
  /// This may cause the destruction of transitively owned objects (this is also the case when a present fields overwrites a previous value)
  /// Developers must ensure that no shared ownership of current field values or further nested embedded objects is held.
  /// </remarks>
  public procedure Decode(aSource: TStream); override;

  /// <summary>
  /// Renders those protobuf fields absent that belong to <see cref="TMessageX"/> (i.e., are not managed by an ancestor class), by setting them to their default values.
  /// </summary>
  private procedure ClearOwnFields;
  end;

implementation

constructor TMessageX.Create;
begin
  inherited;
  ClearOwnFields;
end;

destructor TMessageX.Destroy;
begin
  inherited;
end;

procedure TMessageX.Clear;
begin
  inherited;
  ClearOwnFields;
end;

procedure TMessageX.Encode(aDest: TStream);
begin
  inherited;
  EncodeField<UInt32>(FFieldX, PROTOBUF_FIELD_NUMBER_FIELD_X, gProtobufWireCodecUint32, aDest);
  EncodeField<UnicodeString>(FFieldY, PROTOBUF_FIELD_NUMBER_FIELD_Y, gProtobufWireCodecString, aDest);
end;

procedure TMessageX.Decode(aSource: TStream);
begin
  inherited;
  FFieldX := DecodeUnknownField<UInt32>(PROTOBUF_FIELD_NUMBER_FIELD_X, gProtobufWireCodecUint32);
  FFieldY := DecodeUnknownField<UnicodeString>(PROTOBUF_FIELD_NUMBER_FIELD_Y, gProtobufWireCodecString);
end;

procedure TMessageX.ClearOwnFields;
begin
  FFieldX := PROTOBUF_DEFAULT_VALUE_UINT32;
  FFieldY := PROTOBUF_DEFAULT_VALUE_STRING;
end;

function TMessageX.GetFieldX: UInt32;
begin
  result := FFieldX;
end;

procedure TMessageX.SetFieldX(aValue: UInt32);
begin
  FFieldX := aValue;
end;

function TMessageX.GetFieldY: UnicodeString;
begin
  result := FFieldY;
end;

procedure TMessageX.SetFieldY(aValue: UnicodeString);
begin
  FFieldY := aValue;
end;

end.
