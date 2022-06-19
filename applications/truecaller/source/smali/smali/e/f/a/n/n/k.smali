.class public final Le/f/a/n/n/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/n/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/n/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/n/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/d/w;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Le/f/a/n/o/b0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/q/d/w;

    invoke-direct {v0, p1, p2}, Le/f/a/n/q/d/w;-><init>(Ljava/io/InputStream;Le/f/a/n/o/b0/b;)V

    iput-object v0, p0, Le/f/a/n/n/k;->a:Le/f/a/n/q/d/w;

    const/high16 p1, 0x500000

    .line 3
    invoke-virtual {v0, p1}, Le/f/a/n/q/d/w;->mark(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/n/k;->a:Le/f/a/n/q/d/w;

    invoke-virtual {v0}, Le/f/a/n/q/d/w;->reset()V

    .line 2
    iget-object v0, p0, Le/f/a/n/n/k;->a:Le/f/a/n/q/d/w;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/n/k;->a:Le/f/a/n/q/d/w;

    invoke-virtual {v0}, Le/f/a/n/q/d/w;->d()V

    return-void
.end method
