.class public final Ln3/e/a/e/k2/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/k2/o/a$a;,
        Ln3/e/a/e/k2/o/a$b;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/a/e/k2/o/a$b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/o/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/a/e/k2/o/a;->a:Ln3/e/a/e/k2/o/a$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ln3/e/a/e/k2/o/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/k2/o/a;->a:Ln3/e/a/e/k2/o/a$b;

    check-cast p1, Ln3/e/a/e/k2/o/a;

    iget-object p1, p1, Ln3/e/a/e/k2/o/a;->a:Ln3/e/a/e/k2/o/a$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/a;->a:Ln3/e/a/e/k2/o/a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/o/a;->a:Ln3/e/a/e/k2/o/a$b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
