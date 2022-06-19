.class public final Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;
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
    name = "SingleChoice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/Answer$SingleChoice$b;,
        Lcom/truecaller/surveys/data/entities/Answer$SingleChoice$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001c\u001dB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B%\u0008\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u0015\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;",
        "Lcom/truecaller/surveys/data/entities/Answer;",
        "Lcom/truecaller/surveys/data/entities/Choice;",
        "component1",
        "()Lcom/truecaller/surveys/data/entities/Choice;",
        "choice",
        "copy",
        "(Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/surveys/data/entities/Choice;",
        "getChoice",
        "<init>",
        "(Lcom/truecaller/surveys/data/entities/Choice;)V",
        "seen1",
        "Lq3/b/k/t;",
        "serializationConstructorMarker",
        "(ILcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V",
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
.field public static final Companion:Lcom/truecaller/surveys/data/entities/Answer$SingleChoice$b;


# instance fields
.field private final choice:Lcom/truecaller/surveys/data/entities/Choice;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->Companion:Lcom/truecaller/surveys/data/entities/Answer$SingleChoice$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/truecaller/surveys/data/entities/Choice;Lq3/b/k/t;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/truecaller/surveys/data/entities/Answer;-><init>(ILq3/b/k/t;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    return-void

    :cond_0
    new-instance p1, Lq3/b/c;

    const-string p2, "choice"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/truecaller/surveys/data/entities/Choice;)V
    .locals 1

    const-string v0, "choice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/surveys/data/entities/Answer;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;Lcom/truecaller/surveys/data/entities/Choice;ILjava/lang/Object;)Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->copy(Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/truecaller/surveys/data/entities/Answer;->write$Self(Lcom/truecaller/surveys/data/entities/Answer;Lq3/b/j/c;Lq3/b/i/d;)V

    sget-object v0, Lcom/truecaller/surveys/data/entities/Choice$a;->a:Lcom/truecaller/surveys/data/entities/Choice$a;

    iget-object p0, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lq3/b/j/c;->q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/truecaller/surveys/data/entities/Choice;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    return-object v0
.end method

.method public final copy(Lcom/truecaller/surveys/data/entities/Choice;)Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;
    .locals 1

    const-string v0, "choice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    invoke-direct {v0, p1}, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;-><init>(Lcom/truecaller/surveys/data/entities/Choice;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    iget-object p1, p1, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

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

.method public final getChoice()Lcom/truecaller/surveys/data/entities/Choice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Choice;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SingleChoice(choice="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->choice:Lcom/truecaller/surveys/data/entities/Choice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
