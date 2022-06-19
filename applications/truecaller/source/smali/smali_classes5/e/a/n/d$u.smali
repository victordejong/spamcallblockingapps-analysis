.class public final Le/a/n/d$u;
.super Le/a/n/m0;
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
    iput-object p1, p0, Le/a/n/d$u;->c:Le/a/n/d;

    iput-object p2, p0, Le/a/n/d$u;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-direct {p0, p3, p4}, Le/a/n/m0;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/d$u;->c:Le/a/n/d;

    invoke-static {v0}, Le/a/n/d;->d(Le/a/n/d;)Z

    move-result v1

    invoke-static {v0, p0, p1, v1}, Le/a/n/d;->e(Le/a/n/d;Le/a/n/v;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method
