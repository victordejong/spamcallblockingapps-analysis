.class public final enum Lcom/truecaller/forcedupdate/UpdateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/forcedupdate/UpdateType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/forcedupdate/UpdateType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B7\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\u000f\u0010\rR\u0019\u0010\u0010\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\rj\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/forcedupdate/UpdateType;",
        "",
        "",
        "skippable",
        "Z",
        "getSkippable",
        "()Z",
        "supportsCompactMode",
        "getSupportsCompactMode",
        "",
        "description",
        "I",
        "getDescription",
        "()I",
        "action",
        "getAction",
        "title",
        "getTitle",
        "<init>",
        "(Ljava/lang/String;IZZIII)V",
        "Companion",
        "a",
        "NONE",
        "OPTIONAL",
        "REQUIRED",
        "DISCONTINUED",
        "forced-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/forcedupdate/UpdateType;

.field public static final Companion:Lcom/truecaller/forcedupdate/UpdateType$a;

.field public static final enum DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

.field public static final enum NONE:Lcom/truecaller/forcedupdate/UpdateType;

.field public static final enum OPTIONAL:Lcom/truecaller/forcedupdate/UpdateType;

.field public static final enum REQUIRED:Lcom/truecaller/forcedupdate/UpdateType;


# instance fields
.field private final action:I

.field private final description:I

.field private final skippable:Z

.field private final supportsCompactMode:Z

.field private final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/forcedupdate/UpdateType;

    new-instance v9, Lcom/truecaller/forcedupdate/UpdateType;

    const-string v2, "NONE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v1, v9

    .line 1
    invoke-direct/range {v1 .. v8}, Lcom/truecaller/forcedupdate/UpdateType;-><init>(Ljava/lang/String;IZZIII)V

    sput-object v9, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/truecaller/forcedupdate/UpdateType;

    .line 2
    sget v15, Lcom/truecaller/forcedupdate/R$string;->fu_optional_title:I

    .line 3
    sget v16, Lcom/truecaller/forcedupdate/R$string;->fu_optional_description:I

    .line 4
    sget v9, Lcom/truecaller/forcedupdate/R$string;->fu_updateNow:I

    const-string v11, "OPTIONAL"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v10, v1

    move/from16 v17, v9

    .line 5
    invoke-direct/range {v10 .. v17}, Lcom/truecaller/forcedupdate/UpdateType;-><init>(Ljava/lang/String;IZZIII)V

    sput-object v1, Lcom/truecaller/forcedupdate/UpdateType;->OPTIONAL:Lcom/truecaller/forcedupdate/UpdateType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/forcedupdate/UpdateType;

    .line 6
    sget v7, Lcom/truecaller/forcedupdate/R$string;->fu_required_title:I

    .line 7
    sget v8, Lcom/truecaller/forcedupdate/R$string;->fu_required_description:I

    const-string v3, "REQUIRED"

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v2, v1

    .line 8
    invoke-direct/range {v2 .. v9}, Lcom/truecaller/forcedupdate/UpdateType;-><init>(Ljava/lang/String;IZZIII)V

    sput-object v1, Lcom/truecaller/forcedupdate/UpdateType;->REQUIRED:Lcom/truecaller/forcedupdate/UpdateType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/forcedupdate/UpdateType;

    .line 9
    sget v8, Lcom/truecaller/forcedupdate/R$string;->fu_discontinued_title:I

    .line 10
    sget v9, Lcom/truecaller/forcedupdate/R$string;->fu_discontinued_description:I

    .line 11
    sget v10, Lcom/truecaller/forcedupdate/R$string;->fu_uninstall:I

    const-string v4, "DISCONTINUED"

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v1

    .line 12
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/forcedupdate/UpdateType;-><init>(Ljava/lang/String;IZZIII)V

    sput-object v1, Lcom/truecaller/forcedupdate/UpdateType;->DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/forcedupdate/UpdateType;->$VALUES:[Lcom/truecaller/forcedupdate/UpdateType;

    new-instance v0, Lcom/truecaller/forcedupdate/UpdateType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/forcedupdate/UpdateType$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/forcedupdate/UpdateType;->Companion:Lcom/truecaller/forcedupdate/UpdateType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/truecaller/forcedupdate/UpdateType;->supportsCompactMode:Z

    iput-boolean p4, p0, Lcom/truecaller/forcedupdate/UpdateType;->skippable:Z

    iput p5, p0, Lcom/truecaller/forcedupdate/UpdateType;->title:I

    iput p6, p0, Lcom/truecaller/forcedupdate/UpdateType;->description:I

    iput p7, p0, Lcom/truecaller/forcedupdate/UpdateType;->action:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/forcedupdate/UpdateType;
    .locals 1

    const-class v0, Lcom/truecaller/forcedupdate/UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/forcedupdate/UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/forcedupdate/UpdateType;
    .locals 1

    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->$VALUES:[Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, [Lcom/truecaller/forcedupdate/UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/forcedupdate/UpdateType;

    return-object v0
.end method


# virtual methods
.method public final getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/forcedupdate/UpdateType;->action:I

    return v0
.end method

.method public final getDescription()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/forcedupdate/UpdateType;->description:I

    return v0
.end method

.method public final getSkippable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/forcedupdate/UpdateType;->skippable:Z

    return v0
.end method

.method public final getSupportsCompactMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/forcedupdate/UpdateType;->supportsCompactMode:Z

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/forcedupdate/UpdateType;->title:I

    return v0
.end method
