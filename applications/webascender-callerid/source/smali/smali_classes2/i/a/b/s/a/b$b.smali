.class final Li/a/b/s/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/s/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Li/a/b/s/a/b$b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Li/a/b/s/a/b$b;->b:I

    return-void
.end method

.method b(Ljava/lang/Object;)Li/a/b/s/a/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Li/a/b/s/a/b$b<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/a/b/s/a/b$b;->a:Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Li/a/b/s/a/b$b;->b:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Li/a/b/s/a/b$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Li/a/b/s/a/b$b;

    iget-object p1, p1, Li/a/b/s/a/b$b;->a:Ljava/lang/Object;

    iget-object v0, p0, Li/a/b/s/a/b$b;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    check-cast p1, Li/a/b/s/a/a$d;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Li/a/b/s/a/b$b;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/b/s/a/b$b;->b:I

    return v0
.end method
