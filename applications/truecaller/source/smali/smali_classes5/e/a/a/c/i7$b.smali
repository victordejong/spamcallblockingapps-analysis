.class public final Le/a/a/c/i7$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i7;->d(JLjava/lang/Integer;IILs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.MessagesTranslateHelperImpl"
    f = "MessagesTranslateHelperImpl.kt"
    l = {
        0x4d
    }
    m = "identifyLanguagesForConversation"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a/c/i7;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:J


# direct methods
.method public constructor <init>(Le/a/a/c/i7;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i7$b;->f:Le/a/a/c/i7;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Le/a/a/c/i7$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a/c/i7$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a/c/i7$b;->e:I

    iget-object v0, p0, Le/a/a/c/i7$b;->f:Le/a/a/c/i7;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Le/a/a/c/i7;->d(JLjava/lang/Integer;IILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
