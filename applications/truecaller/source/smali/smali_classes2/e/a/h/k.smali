.class public final Le/a/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/i;


# instance fields
.field public final a:Le/a/f/b;

.field public final b:Le/a/p5/g;

.field public final c:Le/a/o/c;

.field public final d:Lcom/truecaller/settings/CallingSettings;

.field public final e:Le/a/d/f;

.field public final f:Le/a/k/h;


# direct methods
.method public constructor <init>(Le/a/f/b;Le/a/p5/g;Le/a/o/c;Lcom/truecaller/settings/CallingSettings;Le/a/d/f;Le/a/k/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inCallUi"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSetting"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/k;->a:Le/a/f/b;

    iput-object p2, p0, Le/a/h/k;->b:Le/a/p5/g;

    iput-object p3, p0, Le/a/h/k;->c:Le/a/o/c;

    iput-object p4, p0, Le/a/h/k;->d:Lcom/truecaller/settings/CallingSettings;

    iput-object p5, p0, Le/a/h/k;->e:Le/a/d/f;

    iput-object p6, p0, Le/a/h/k;->f:Le/a/k/h;

    return-void
.end method
