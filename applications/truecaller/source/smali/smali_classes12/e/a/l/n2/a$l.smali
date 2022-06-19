.class public final Le/a/l/n2/a$l;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling"
    f = "GooglePlayBilling.kt"
    l = {
        0x13a
    }
    m = "querySkuDetails"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/l/n2/a;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$l;->f:Le/a/l/n2/a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/l/n2/a$l;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/l/n2/a$l;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/l/n2/a$l;->e:I

    iget-object p1, p0, Le/a/l/n2/a$l;->f:Le/a/l/n2/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
