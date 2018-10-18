table 50100 "DOPla Setup"
{
    Caption = 'DOPla Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primärschlüssel';
            DataClassification = ToBeClassified;
        }

        field(10; "Planungsnr. Serie"; Code[10])
        {
            Caption = 'Planungsnr. Serie';
            DataClassification = ToBeClassified;
        }
        field(20; "Sowis_Global_Dim_Sync"; Boolean)
        {
            Caption = 'Globale sowis Dimensionen synchronisieren';
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InsertIfNotExists()
    var
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;


}