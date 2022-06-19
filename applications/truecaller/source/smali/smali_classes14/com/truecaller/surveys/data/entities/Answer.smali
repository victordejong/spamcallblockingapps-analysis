.class public abstract Lcom/truecaller/surveys/data/entities/Answer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/Answer$Binary;,
        Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;,
        Lcom/truecaller/surveys/data/entities/Answer$FreeText;,
        Lcom/truecaller/surveys/data/entities/Answer$Rating;,
        Lcom/truecaller/surveys/data/entities/Answer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \t2\u00020\u0001:\u0005\n\u000b\u000c\r\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001b\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0002\u0010\u0008\u0082\u0001\u0004\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/Answer;",
        "",
        "<init>",
        "()V",
        "",
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
        "Lcom/truecaller/surveys/data/entities/Answer$Binary;",
        "Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;",
        "Lcom/truecaller/surveys/data/entities/Answer$FreeText;",
        "Lcom/truecaller/surveys/data/entities/Answer$Rating;",
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
.field public static final Companion:Lcom/truecaller/surveys/data/entities/Answer$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Answer$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Answer;->Companion:Lcom/truecaller/surveys/data/entities/Answer$a;

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
    invoke-direct {p0}, Lcom/truecaller/surveys/data/entities/Answer;-><init>()V

    return-void
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/Answer;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 1

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "output"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serialDesc"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
