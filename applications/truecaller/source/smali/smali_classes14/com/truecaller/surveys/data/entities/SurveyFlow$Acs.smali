.class public final Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;
.super Lcom/truecaller/surveys/data/entities/SurveyFlow;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/SurveyFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Acs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$b;,
        Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001cB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015B#\u0008\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0014\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;",
        "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
        "",
        "component1",
        "()Z",
        "onlyIfPickedUp",
        "copy",
        "(Z)Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "getOnlyIfPickedUp",
        "<init>",
        "(Z)V",
        "seen1",
        "Lq3/b/k/t;",
        "serializationConstructorMarker",
        "(IZLq3/b/k/t;)V",
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
.field public static final Companion:Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$b;


# instance fields
.field private final onlyIfPickedUp:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->Companion:Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs$b;

    return-void
.end method

.method public synthetic constructor <init>(IZLq3/b/k/t;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/truecaller/surveys/data/entities/SurveyFlow;-><init>(ILq3/b/k/t;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    return-void

    :cond_0
    new-instance p1, Lq3/b/c;

    const-string p2, "onlyIfPickedUp"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/surveys/data/entities/SurveyFlow;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;ZILjava/lang/Object;)Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->copy(Z)Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 1

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/truecaller/surveys/data/entities/SurveyFlow;->write$Self(Lcom/truecaller/surveys/data/entities/SurveyFlow;Lq3/b/j/c;Lq3/b/i/d;)V

    iget-boolean p0, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Lq3/b/j/c;->g(Lq3/b/i/d;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    return v0
.end method

.method public final copy(Z)Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;
    .locals 1

    new-instance v0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    invoke-direct {v0, p1}, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    iget-boolean v0, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    iget-boolean p1, p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getOnlyIfPickedUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Acs(onlyIfPickedUp="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->onlyIfPickedUp:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
