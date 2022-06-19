.class public final Le/a/l/g/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/r0;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/i4/e;

.field public final d:Le/a/l/g/t;

.field public final e:Le/a/b0/q/z;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/r0;Landroid/content/Context;Le/a/i4/e;Le/a/l/g/t;Le/a/b0/q/z;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goldGiftPromoUtils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/g/s;->a:Le/a/l/p2/r0;

    iput-object p2, p0, Le/a/l/g/s;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/l/g/s;->c:Le/a/i4/e;

    iput-object p4, p0, Le/a/l/g/s;->d:Le/a/l/g/t;

    iput-object p5, p0, Le/a/l/g/s;->e:Le/a/b0/q/z;

    iput-object p6, p0, Le/a/l/g/s;->f:Ls1/w/f;

    return-void
.end method
