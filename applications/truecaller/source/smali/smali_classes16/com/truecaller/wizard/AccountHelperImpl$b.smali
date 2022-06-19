.class public final Lcom/truecaller/wizard/AccountHelperImpl$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/wizard/AccountHelperImpl;->e(JLe/a/b0/e/b;Le/a/b0/e/b;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.AccountHelperImpl"
    f = "AccountHelper.kt"
    l = {
        0x8e
    }
    m = "createAccount"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/truecaller/wizard/AccountHelperImpl;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/truecaller/wizard/AccountHelperImpl;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/wizard/AccountHelperImpl$b;->f:Lcom/truecaller/wizard/AccountHelperImpl;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Lcom/truecaller/wizard/AccountHelperImpl$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/truecaller/wizard/AccountHelperImpl$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/wizard/AccountHelperImpl$b;->e:I

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$b;->f:Lcom/truecaller/wizard/AccountHelperImpl;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/truecaller/wizard/AccountHelperImpl;->e(JLe/a/b0/e/b;Le/a/b0/e/b;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
