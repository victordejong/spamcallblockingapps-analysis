.class public final Ls1/a/a/a/v0/d/a/d0/n/j$b$a;
.super Ls1/a/a/a/v0/d/a/d0/n/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/d0/n/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/b/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/d/a/d0/n/j$b;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$b$a;->a:Ls1/a/a/a/v0/b/e;

    return-void
.end method
