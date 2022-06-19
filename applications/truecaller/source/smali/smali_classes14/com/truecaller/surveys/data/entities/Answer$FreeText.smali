.class public final Lcom/truecaller/surveys/data/entities/Answer$FreeText;
.super Lcom/truecaller/surveys/data/entities/Answer;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/Answer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FreeText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/Answer$FreeText$b;,
        Lcom/truecaller/surveys/data/entities/Answer$FreeText$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014B%\u0008\u0017\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0010\u0010\n\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0004\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/Answer$FreeText;",
        "Lcom/truecaller/surveys/data/entities/Answer;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "text",
        "copy",
        "(Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Answer$FreeText;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getText",
        "<init>",
        "(Ljava/lang/String;)V",
        "seen1",
        "Lq3/b/k/t;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lq3/b/k/t;)V",
        "Companion",
        "a",
        "b",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/surveys/data/entities/Answer$FreeText$b;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$FreeText$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Answer$FreeText$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->Companion:Lcom/truecaller/surveys/data/entities/Answer$FreeText$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lq3/b/k/t;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/truecaller/surveys/data/entities/Answer;-><init>(ILq3/b/k/t;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lq3/b/c;

    const-string p2, "text"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/surveys/data/entities/Answer;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/surveys/data/entities/Answer$FreeText;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/surveys/data/entities/Answer$FreeText;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->copy(Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/Answer$FreeText;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 1

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/truecaller/surveys/data/entities/Answer;->write$Self(Lcom/truecaller/surveys/data/entities/Answer;Lq3/b/j/c;Lq3/b/i/d;)V

    iget-object p0, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Lq3/b/j/c;->h(Lq3/b/i/d;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Answer$FreeText;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    invoke-direct {v0, p1}, Lcom/truecaller/surveys/data/entities/Answer$FreeText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

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

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

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

    const-string v0, "FreeText(text="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->text:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
