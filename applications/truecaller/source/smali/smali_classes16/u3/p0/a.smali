.class public final Lu3/p0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/u$b;


# instance fields
.field public final synthetic a:Lu3/u;


# direct methods
.method public constructor <init>(Lu3/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/p0/a;->a:Lu3/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu3/f;)Lu3/u;
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lu3/p0/a;->a:Lu3/u;

    return-object p1
.end method
