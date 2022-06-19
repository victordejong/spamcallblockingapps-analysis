.class public final Ls1/a/a/a/v0/d/b/h$b;
.super Ls1/a/a/a/v0/d/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "internalName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/d/b/h;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/h$b;->j:Ljava/lang/String;

    return-void
.end method
