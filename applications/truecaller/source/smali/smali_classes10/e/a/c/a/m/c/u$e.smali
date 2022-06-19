.class public final Le/a/c/a/m/c/u$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/u;->RA(Le/a/c/r/h/h;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment"
    f = "QaAddressFiltersFragment.kt"
    l = {
        0x68
    }
    m = "isGrmAllowedForSender"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/a/m/c/u;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/u$e;->f:Le/a/c/a/m/c/u;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/a/m/c/u$e;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/a/m/c/u$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/a/m/c/u$e;->e:I

    iget-object p1, p0, Le/a/c/a/m/c/u$e;->f:Le/a/c/a/m/c/u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Le/a/c/a/m/c/u;->RA(Le/a/c/r/h/h;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
