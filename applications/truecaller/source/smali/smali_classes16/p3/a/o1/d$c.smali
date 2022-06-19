.class public final Lp3/a/o1/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/q1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/o1/d;


# direct methods
.method public constructor <init>(Lp3/a/o1/d;Lp3/a/o1/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/d$c;->a:Lp3/a/o1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/d$c;->a:Lp3/a/o1/d;

    .line 2
    iget-object v1, v0, Lp3/a/o1/d;->e:Lp3/a/o1/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lp3/a/o1/d;->e:Lp3/a/o1/d$b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not handled"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    const/16 v0, 0x1bb

    :goto_0
    return v0
.end method
