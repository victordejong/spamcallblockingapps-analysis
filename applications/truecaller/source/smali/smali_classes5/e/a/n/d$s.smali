.class public final Le/a/n/d$s;
.super Le/a/n/h2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/d;-><init>(Ls1/w/f;Landroid/content/Context;Le/m/e/k;Le/a/p5/g;Le/a/b0/o/a;Le/a/b0/e/f;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/a/i0;Le/a/e4/p;Le/a/p5/a0;Le/a/b0/n/g;Le/a/n5/c;Le/a/c3/a;Le/a/b0/k/f;Le/a/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/a/b0/n/g;

.field public final synthetic d:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/b0/n/g;Le/a/b0/o/a;Ljava/lang/String;Le/a/b0/o/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/n/d$s;->c:Le/a/b0/n/g;

    iput-object p2, p0, Le/a/n/d$s;->d:Le/a/b0/o/a;

    invoke-direct {p0, p3, p4}, Le/a/n/h2;-><init>(Ljava/lang/String;Le/a/b0/o/a;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/n/z0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/n/h2;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/n/h2;->setValue(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    new-array v1, v1, [Ls1/k;

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    .line 4
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5
    new-instance v3, Ls1/k;

    const-string v4, "auto_accept"

    invoke-direct {v3, v4, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 6
    invoke-static {v1}, Ls1/u/i;->I([Ls1/k;)Ljava/util/HashMap;

    move-result-object v9

    .line 7
    iget-object v5, p0, Le/a/n/d$s;->c:Le/a/b0/n/g;

    .line 8
    sget-object v6, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9
    invoke-interface/range {v5 .. v11}, Le/a/b0/n/g;->c(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLe/a/b0/n/i;)V

    :cond_2
    return v0
.end method
