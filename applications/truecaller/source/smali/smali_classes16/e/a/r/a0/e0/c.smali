.class public final Le/a/r/a0/e0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/e0/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/r/a0/e0/d;

.field public final c:Le/a/r/c/o;

.field public final d:Le/a/r/g$a;

.field public final e:Le/a/r/c/l;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/r/a0/e0/d;Le/a/r/c/o;Le/a/r/g$a;Le/a/r/c/l;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoLoginManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returningUserHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessContactsHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/a0/e0/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/r/a0/e0/c;->b:Le/a/r/a0/e0/d;

    iput-object p3, p0, Le/a/r/a0/e0/c;->c:Le/a/r/c/o;

    iput-object p4, p0, Le/a/r/a0/e0/c;->d:Le/a/r/g$a;

    iput-object p5, p0, Le/a/r/a0/e0/c;->e:Le/a/r/c/l;

    return-void
.end method
