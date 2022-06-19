.class public final Le/a/r/a0/e0/e$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/e0/e;->e(Le/a/n2/a/e;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.welcome.autologin.AutoLoginManagerImpl"
    f = "AutoLoginManager.kt"
    l = {
        0x7e
    }
    m = "onCheckCredentialsResponse"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/r/a0/e0/e;


# direct methods
.method public constructor <init>(Le/a/r/a0/e0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/e0/e$e;->f:Le/a/r/a0/e0/e;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/r/a0/e0/e$e;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/r/a0/e0/e$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/r/a0/e0/e$e;->e:I

    iget-object p1, p0, Le/a/r/a0/e0/e$e;->f:Le/a/r/a0/e0/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Le/a/r/a0/e0/e;->e(Le/a/n2/a/e;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
