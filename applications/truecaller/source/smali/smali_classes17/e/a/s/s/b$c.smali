.class public final Le/a/s/s/b$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/s/b;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callhero_assistant.utils.CallAssistantAccountManagerImpl"
    f = "CallAssistantAccountManager.kt"
    l = {
        0x70
    }
    m = "disableService"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/s/s/b;


# direct methods
.method public constructor <init>(Le/a/s/s/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/s/b$c;->f:Le/a/s/s/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/s/s/b$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/s/s/b$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/s/s/b$c;->e:I

    iget-object p1, p0, Le/a/s/s/b$c;->f:Le/a/s/s/b;

    invoke-virtual {p1, p0}, Le/a/s/s/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
