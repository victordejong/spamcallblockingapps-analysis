.class public final Le/a/c/a/m/b/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/c/b0/d;

.field public final b:Ls1/w/f;

.field public final c:Le/a/c/i/i/a;

.field public final d:Le/a/c/w/a;

.field public final e:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/b0/d;Ls1/w/f;Le/a/c/i/i/a;Le/a/c/w/a;Le/a/c/w/o0/g;)V
    .locals 1

    const-string v0, "updatesRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/x$a;->a:Le/a/c/b0/d;

    iput-object p2, p0, Le/a/c/a/m/b/x$a;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/m/b/x$a;->c:Le/a/c/i/i/a;

    iput-object p4, p0, Le/a/c/a/m/b/x$a;->d:Le/a/c/w/a;

    iput-object p5, p0, Le/a/c/a/m/b/x$a;->e:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 8
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
    new-instance p1, Le/a/c/a/m/b/x;

    .line 2
    iget-object v2, p0, Le/a/c/a/m/b/x$a;->a:Le/a/c/b0/d;

    iget-object v3, p0, Le/a/c/a/m/b/x$a;->b:Ls1/w/f;

    iget-object v4, p0, Le/a/c/a/m/b/x$a;->c:Le/a/c/i/i/a;

    iget-object v5, p0, Le/a/c/a/m/b/x$a;->d:Le/a/c/w/a;

    iget-object v6, p0, Le/a/c/a/m/b/x$a;->e:Le/a/c/w/o0/g;

    const/4 v7, 0x0

    move-object v1, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Le/a/c/a/m/b/x;-><init>(Le/a/c/b0/d;Ls1/w/f;Le/a/c/i/i/a;Le/a/c/w/a;Le/a/c/w/o0/g;Ls1/z/c/f;)V

    return-object p1
.end method
