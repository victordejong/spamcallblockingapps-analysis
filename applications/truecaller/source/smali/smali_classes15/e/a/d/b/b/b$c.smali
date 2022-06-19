.class public final Le/a/d/b/b/b$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/b/b;->Oj(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter"
    f = "LegacyIncomingVoipServicePresenter.kt"
    l = {
        0xe9
    }
    m = "sendRingingMessage"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/d/b/b/b;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/d/b/b/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/b$c;->f:Le/a/d/b/b/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/b/b/b$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/b/b/b$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/b/b/b$c;->e:I

    iget-object p1, p0, Le/a/d/b/b/b$c;->f:Le/a/d/b/b/b;

    invoke-virtual {p1, p0}, Le/a/d/b/b/b;->Oj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
