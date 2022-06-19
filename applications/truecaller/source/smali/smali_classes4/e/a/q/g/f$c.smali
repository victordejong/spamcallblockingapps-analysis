.class public final Le/a/q/g/f$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/g/f;->c(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contactfeedback.db.ContactFeedbackDbManagerImpl"
    f = "ContactFeedbackDbManager.kt"
    l = {
        0x3d
    }
    m = "getAllPendingComments"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/q/g/f;


# direct methods
.method public constructor <init>(Le/a/q/g/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q/g/f$c;->f:Le/a/q/g/f;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/q/g/f$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/q/g/f$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/q/g/f$c;->e:I

    iget-object p1, p0, Le/a/q/g/f$c;->f:Le/a/q/g/f;

    invoke-virtual {p1, p0}, Le/a/q/g/f;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
