.class public final Le/a/a/e/n$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/n;->h(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanerImpl"
    f = "InboxCleaner.kt"
    l = {
        0x8e,
        0x8f,
        0x90
    }
    m = "showDMANotification"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a/e/n;

.field public g:Ljava/lang/Object;

.field public h:J

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Le/a/a/e/n;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/n$e;->f:Le/a/a/e/n;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/a/e/n$e;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a/e/n$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a/e/n$e;->e:I

    iget-object p1, p0, Le/a/a/e/n$e;->f:Le/a/a/e/n;

    invoke-virtual {p1, p0}, Le/a/a/e/n;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
