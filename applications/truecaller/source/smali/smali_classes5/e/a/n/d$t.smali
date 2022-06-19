.class public final Le/a/n/d$t;
.super Le/a/n/o0;
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
.field public final synthetic b:Le/a/n/d;


# direct methods
.method public constructor <init>(Le/a/n/d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/n/d$t;->b:Le/a/n/d;

    invoke-direct {p0, p2}, Le/a/n/o0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/d$t;->b:Le/a/n/d;

    invoke-static {v0}, Le/a/n/d;->d(Le/a/n/d;)Z

    move-result v1

    invoke-static {v0, p0, p1, v1}, Le/a/n/d;->e(Le/a/n/d;Le/a/n/v;Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method
