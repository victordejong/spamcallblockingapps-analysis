.class public final enum Lcom/hiya/stingray/ui/contactdetails/d0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/ui/contactdetails/d0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum FRAUD:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum IDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum MULTI_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum NAME_AVAILABLE:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum PRIVATE:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum SAVED_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum SCREENED:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum SPAM:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum UNIDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

.field public static final enum VOICEMAIL:Lcom/hiya/stingray/ui/contactdetails/d0;


# instance fields
.field private sections:[Lcom/hiya/stingray/ui/contactdetails/e0;

.field private showCallButton:Z

.field private showReport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v6, Lcom/hiya/stingray/ui/contactdetails/d0;

    const/4 v7, 0x2

    new-array v5, v7, [Lcom/hiya/stingray/ui/contactdetails/e0;

    sget-object v8, Lcom/hiya/stingray/ui/contactdetails/e0;->CONTACT_INFO:Lcom/hiya/stingray/ui/contactdetails/e0;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    sget-object v10, Lcom/hiya/stingray/ui/contactdetails/e0;->RECENT_ACTIVITY:Lcom/hiya/stingray/ui/contactdetails/e0;

    const/4 v11, 0x1

    aput-object v10, v5, v11

    const-string v1, "SAVED_CONTACT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v6, Lcom/hiya/stingray/ui/contactdetails/d0;->SAVED_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v1, v7, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v8, v1, v9

    aput-object v10, v1, v11

    const-string v13, "IDENTIFIED"

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v0

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->IDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/d0;

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/hiya/stingray/ui/contactdetails/e0;

    sget-object v4, Lcom/hiya/stingray/ui/contactdetails/e0;->USER_REPORTS:Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v4, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v7

    const-string v18, "SPAM"

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v17, v1

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v1, Lcom/hiya/stingray/ui/contactdetails/d0;->SPAM:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 4
    new-instance v3, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v5, v2, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v4, v5, v9

    aput-object v8, v5, v11

    aput-object v10, v5, v7

    const-string v13, "FRAUD"

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v12, v3

    move-object/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v3, Lcom/hiya/stingray/ui/contactdetails/d0;->FRAUD:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 5
    new-instance v4, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v5, v7, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v8, v5, v9

    aput-object v10, v5, v11

    const-string v18, "SCREENED"

    const/16 v19, 0x4

    move-object/from16 v17, v4

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v22}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v4, Lcom/hiya/stingray/ui/contactdetails/d0;->SCREENED:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 6
    new-instance v5, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v15, v7, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v8, v15, v9

    aput-object v10, v15, v11

    const-string v13, "UNIDENTIFIED"

    const/4 v14, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v5

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v12 .. v17}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v5, Lcom/hiya/stingray/ui/contactdetails/d0;->UNIDENTIFIED:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 7
    new-instance v12, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v13, v11, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v10, v13, v9

    const-string v20, "PRIVATE"

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v12

    move-object/from16 v24, v13

    invoke-direct/range {v19 .. v24}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v12, Lcom/hiya/stingray/ui/contactdetails/d0;->PRIVATE:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 8
    new-instance v13, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v15, v2, [Lcom/hiya/stingray/ui/contactdetails/e0;

    sget-object v14, Lcom/hiya/stingray/ui/contactdetails/e0;->MULTI_CONTACTS:Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v14, v15, v9

    aput-object v8, v15, v11

    aput-object v10, v15, v7

    const-string v16, "MULTI_CONTACT"

    const/16 v17, 0x7

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v14, v13

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v13, Lcom/hiya/stingray/ui/contactdetails/d0;->MULTI_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 9
    new-instance v14, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v15, v7, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v8, v15, v9

    aput-object v10, v15, v11

    const-string v22, "VOICEMAIL"

    const/16 v23, 0x8

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v21, v14

    move-object/from16 v26, v15

    invoke-direct/range {v21 .. v26}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v14, Lcom/hiya/stingray/ui/contactdetails/d0;->VOICEMAIL:Lcom/hiya/stingray/ui/contactdetails/d0;

    .line 10
    new-instance v15, Lcom/hiya/stingray/ui/contactdetails/d0;

    new-array v2, v7, [Lcom/hiya/stingray/ui/contactdetails/e0;

    aput-object v8, v2, v9

    aput-object v10, v2, v11

    const-string v17, "NAME_AVAILABLE"

    const/16 v18, 0x9

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v16, v15

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lcom/hiya/stingray/ui/contactdetails/d0;-><init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V

    sput-object v15, Lcom/hiya/stingray/ui/contactdetails/d0;->NAME_AVAILABLE:Lcom/hiya/stingray/ui/contactdetails/d0;

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/hiya/stingray/ui/contactdetails/d0;

    aput-object v6, v2, v9

    aput-object v0, v2, v11

    aput-object v1, v2, v7

    const/4 v0, 0x3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    aput-object v4, v2, v0

    const/4 v0, 0x5

    aput-object v5, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v14, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    .line 11
    sput-object v2, Lcom/hiya/stingray/ui/contactdetails/d0;->$VALUES:[Lcom/hiya/stingray/ui/contactdetails/d0;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IZZ[Lcom/hiya/stingray/ui/contactdetails/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ[",
            "Lcom/hiya/stingray/ui/contactdetails/e0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/hiya/stingray/ui/contactdetails/d0;->showCallButton:Z

    .line 3
    iput-boolean p4, p0, Lcom/hiya/stingray/ui/contactdetails/d0;->showReport:Z

    .line 4
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/d0;->sections:[Lcom/hiya/stingray/ui/contactdetails/e0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/ui/contactdetails/d0;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/ui/contactdetails/d0;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/ui/contactdetails/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->$VALUES:[Lcom/hiya/stingray/ui/contactdetails/d0;

    invoke-virtual {v0}, [Lcom/hiya/stingray/ui/contactdetails/d0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/contactdetails/d0;

    return-object v0
.end method


# virtual methods
.method public getSections()[Lcom/hiya/stingray/ui/contactdetails/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/d0;->sections:[Lcom/hiya/stingray/ui/contactdetails/e0;

    return-object v0
.end method

.method public isShowCallButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/d0;->showCallButton:Z

    return v0
.end method

.method public isShowReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/d0;->showReport:Z

    return v0
.end method
