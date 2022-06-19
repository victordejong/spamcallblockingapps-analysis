.class public final Le/a/h/e/k$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/e/k;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.initiate_call.InitiateContextCallHandlerImpl"
    f = "InitiateContextCallHandler.kt"
    l = {
        0x3f
    }
    m = "handleContextCallPickerOnBoarded"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/h/e/k;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Z


# direct methods
.method public constructor <init>(Le/a/h/e/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/e/k$b;->f:Le/a/h/e/k;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/h/e/k$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/h/e/k$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/h/e/k$b;->e:I

    iget-object p1, p0, Le/a/h/e/k$b;->f:Le/a/h/e/k;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, p0}, Le/a/h/e/k;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
