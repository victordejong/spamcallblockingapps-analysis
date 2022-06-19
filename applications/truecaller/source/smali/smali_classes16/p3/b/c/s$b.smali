.class public final Lp3/b/c/s$b;
.super Lp3/b/c/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/b/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/b/c/y/a;


# direct methods
.method public constructor <init>(Lp3/b/c/s$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/b/c/s;-><init>()V

    .line 2
    new-instance p1, Lp3/b/c/y/a$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lp3/b/c/y/a$b;-><init>(Lp3/b/c/y/a$a;)V

    .line 3
    iput-object p1, p0, Lp3/b/c/s$b;->a:Lp3/b/c/y/a;

    return-void
.end method


# virtual methods
.method public a()Lp3/b/c/y/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/b/c/s$b;->a:Lp3/b/c/y/a;

    return-object v0
.end method

.method public b()Lp3/b/c/v;
    .locals 1

    .line 1
    sget-object v0, Lp3/b/c/v;->a:Lp3/b/c/v$b;

    return-object v0
.end method
