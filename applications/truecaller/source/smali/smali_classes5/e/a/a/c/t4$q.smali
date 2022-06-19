.class public final Le/a/a/c/t4$q;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->Qj(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl"
    f = "ConversationMessagesPresenter.kt"
    l = {
        0x468
    }
    m = "requestStoragePermissions"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a/c/t4;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$q;->f:Le/a/a/c/t4;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/a/c/t4$q;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a/c/t4$q;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a/c/t4$q;->e:I

    iget-object p1, p0, Le/a/a/c/t4$q;->f:Le/a/a/c/t4;

    invoke-virtual {p1, p0}, Le/a/a/c/t4;->Qj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
