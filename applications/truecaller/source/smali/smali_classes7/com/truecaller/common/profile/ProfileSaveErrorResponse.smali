.class public final Lcom/truecaller/common/profile/ProfileSaveErrorResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/common/profile/ProfileSaveErrorResponse$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\u0007\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R!\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0005\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/common/profile/ProfileSaveErrorResponse;",
        "",
        "",
        "Lcom/truecaller/common/profile/ProfileSaveError;",
        "component1",
        "()Ljava/util/List;",
        "errors",
        "copy",
        "(Ljava/util/List;)Lcom/truecaller/common/profile/ProfileSaveErrorResponse;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getErrors",
        "<init>",
        "(Ljava/util/List;)V",
        "Companion",
        "b",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/common/profile/ProfileSaveErrorResponse$b;

.field private static final gson:Le/m/e/k;

.field private static final type:Ljava/lang/reflect/Type;


# instance fields
.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->Companion:Lcom/truecaller/common/profile/ProfileSaveErrorResponse$b;

    .line 1
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    sput-object v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->gson:Le/m/e/k;

    .line 2
    new-instance v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse$a;

    invoke-direct {v0}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse$a;-><init>()V

    invoke-virtual {v0}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getGson$cp()Le/m/e/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->gson:Le/m/e/k;

    return-object v0
.end method

.method public static final synthetic access$getType$cp()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/truecaller/common/profile/ProfileSaveErrorResponse;Ljava/util/List;ILjava/lang/Object;)Lcom/truecaller/common/profile/ProfileSaveErrorResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->copy(Ljava/util/List;)Lcom/truecaller/common/profile/ProfileSaveErrorResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/truecaller/common/profile/ProfileSaveErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;)",
            "Lcom/truecaller/common/profile/ProfileSaveErrorResponse;"
        }
    .end annotation

    new-instance v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;

    invoke-direct {v0, p1}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;

    iget-object v0, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    iget-object p1, p1, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/profile/ProfileSaveError;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ProfileSaveErrorResponse(errors="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->errors:Ljava/util/List;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
