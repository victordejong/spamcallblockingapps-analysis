.class public final Le/a/a/m/f3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/a/m/o2;

.field public final b:Le/a/h/t0/b;

.field public final c:Le/a/z4/d;


# direct methods
.method public constructor <init>(Le/a/a/m/o2;Le/a/h/t0/b;Le/a/z4/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "unimportantPromoManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppInCallLog"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/m/f3/k;->a:Le/a/a/m/o2;

    iput-object p2, p0, Le/a/a/m/f3/k;->b:Le/a/h/t0/b;

    iput-object p3, p0, Le/a/a/m/f3/k;->c:Le/a/z4/d;

    return-void
.end method
