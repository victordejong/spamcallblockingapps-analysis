.class public final Le/a/d/x/d$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/d;->e(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.manager.AgoraVoipManager"
    f = "VoipManager.kt"
    l = {
        0x120,
        0x133
    }
    m = "joinWithEncryption"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/d/x/d;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/d/x/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/d$e;->f:Le/a/d/x/d;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/x/d$e;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/x/d$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/x/d$e;->e:I

    iget-object p1, p0, Le/a/d/x/d$e;->f:Le/a/d/x/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Le/a/d/x/d;->e(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
