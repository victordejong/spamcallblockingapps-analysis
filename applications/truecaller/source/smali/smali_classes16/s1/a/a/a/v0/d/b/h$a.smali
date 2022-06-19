.class public final Ls1/a/a/a/v0/d/b/h$a;
.super Ls1/a/a/a/v0/d/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final j:Ls1/a/a/a/v0/d/b/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/h;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/d/b/h;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/h$a;->j:Ls1/a/a/a/v0/d/b/h;

    return-void
.end method
