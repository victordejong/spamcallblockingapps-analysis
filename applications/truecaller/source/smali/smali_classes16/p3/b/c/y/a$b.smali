.class public final Lp3/b/c/y/a$b;
.super Lp3/b/c/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/b/c/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/b/c/y/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp3/b/c/y/a;-><init>()V

    .line 2
    new-instance v0, Lp3/b/c/y/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/b/c/y/b$b;-><init>(Lp3/b/c/y/b$a;)V

    .line 3
    iput-object v0, p0, Lp3/b/c/y/a$b;->a:Lp3/b/c/y/b;

    return-void
.end method

.method public constructor <init>(Lp3/b/c/y/a$a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lp3/b/c/y/a;-><init>()V

    .line 5
    new-instance p1, Lp3/b/c/y/b$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lp3/b/c/y/b$b;-><init>(Lp3/b/c/y/b$a;)V

    .line 6
    iput-object p1, p0, Lp3/b/c/y/a$b;->a:Lp3/b/c/y/b;

    return-void
.end method
