.class public final Le/a/c/a/m/b/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/c/w/o0/g;

.field public final b:Le/a/c/t/a;

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/w/o0/g;Le/a/c/t/a;Ls1/w/f;Ls1/w/f;)V
    .locals 1

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsQaManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/o$a;->a:Le/a/c/w/o0/g;

    iput-object p2, p0, Le/a/c/a/m/b/o$a;->b:Le/a/c/t/a;

    iput-object p3, p0, Le/a/c/a/m/b/o$a;->c:Ls1/w/f;

    iput-object p4, p0, Le/a/c/a/m/b/o$a;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Le/a/c/a/m/b/o;

    iget-object v0, p0, Le/a/c/a/m/b/o$a;->a:Le/a/c/w/o0/g;

    iget-object v1, p0, Le/a/c/a/m/b/o$a;->b:Le/a/c/t/a;

    iget-object v2, p0, Le/a/c/a/m/b/o$a;->c:Ls1/w/f;

    iget-object v3, p0, Le/a/c/a/m/b/o$a;->d:Ls1/w/f;

    invoke-direct {p1, v0, v1, v2, v3}, Le/a/c/a/m/b/o;-><init>(Le/a/c/w/o0/g;Le/a/c/t/a;Ls1/w/f;Ls1/w/f;)V

    return-object p1
.end method
