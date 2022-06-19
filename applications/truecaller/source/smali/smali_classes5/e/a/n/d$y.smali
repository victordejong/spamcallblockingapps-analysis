.class public final Le/a/n/d$y;
.super Le/a/n/i1;
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
.field public final synthetic c:Le/a/n/d;

.field public final synthetic d:Lcom/truecaller/settings/CallingSettings;


# direct methods
.method public constructor <init>(Le/a/n/d;Lcom/truecaller/settings/CallingSettings;Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/settings/CallingSettings;",
            "Ljava/lang/String;",
            "Lcom/truecaller/settings/CallingSettings;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/n/d$y;->c:Le/a/n/d;

    iput-object p2, p0, Le/a/n/d$y;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-direct {p0, p3, p4}, Le/a/n/i1;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/n/u0;->a:Lcom/truecaller/settings/CallingSettings;

    .line 3
    iget-object v2, p0, Le/a/n/i1;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7
    iget-object v2, p0, Le/a/n/d$y;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v2, v0}, Lcom/truecaller/settings/CallingSettings;->Q1(I)Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object v0

    sget-object v2, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/n/d$y;->c:Le/a/n/d;

    .line 9
    iget-object v0, v0, Le/a/n/d;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 11
    iget-object v0, p0, Le/a/n/u0;->a:Lcom/truecaller/settings/CallingSettings;

    .line 12
    iget-object v1, p0, Le/a/n/i1;->b:Ljava/lang/String;

    .line 13
    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    return v3

    :cond_2
    :goto_1
    return v1
.end method
