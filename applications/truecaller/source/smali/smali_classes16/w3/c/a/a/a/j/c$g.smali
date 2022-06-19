.class public final Lw3/c/a/a/a/j/c$g;
.super Lw3/c/a/a/a/j/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/c/a/a/a/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw3/c/a/a/a/j/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->b:Z

    .line 3
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->d:Z

    .line 4
    iput-boolean v0, p0, Lw3/c/a/a/a/j/c;->a:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lw3/c/a/a/a/j/c;->f:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lw3/c/a/a/a/j/c;->u:Lw3/c/a/a/a/j/c;

    return-object v0
.end method
