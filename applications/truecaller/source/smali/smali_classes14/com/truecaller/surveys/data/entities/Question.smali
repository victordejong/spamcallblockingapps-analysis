.class public abstract Lcom/truecaller/surveys/data/entities/Question;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/Question$Binary;,
        Lcom/truecaller/surveys/data/entities/Question$SingleChoice;,
        Lcom/truecaller/surveys/data/entities/Question$FreeText;,
        Lcom/truecaller/surveys/data/entities/Question$Rating;,
        Lcom/truecaller/surveys/data/entities/Question$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00122\u00020\u0001:\u0005\u0013\u0014\u0015\u0016\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u001b\u0008\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00028&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000b\u001a\u00020\u00068&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u0082\u0001\u0004\u0018\u0019\u001a\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/Question;",
        "",
        "",
        "getId",
        "()I",
        "id",
        "",
        "getHeaderMessage",
        "()Ljava/lang/String;",
        "headerMessage",
        "getMessage",
        "message",
        "<init>",
        "()V",
        "seen1",
        "Lq3/b/k/t;",
        "serializationConstructorMarker",
        "(ILq3/b/k/t;)V",
        "Companion",
        "Binary",
        "a",
        "FreeText",
        "Rating",
        "SingleChoice",
        "Lcom/truecaller/surveys/data/entities/Question$Binary;",
        "Lcom/truecaller/surveys/data/entities/Question$SingleChoice;",
        "Lcom/truecaller/surveys/data/entities/Question$FreeText;",
        "Lcom/truecaller/surveys/data/entities/Question$Rating;",
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
.field public static final Companion:Lcom/truecaller/surveys/data/entities/Question$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/Question$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Question$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Question;->Companion:Lcom/truecaller/surveys/data/entities/Question$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILq3/b/k/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/surveys/data/entities/Question;-><init>()V

    return-void
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/Question;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 1

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "output"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serialDesc"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getHeaderMessage()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method
