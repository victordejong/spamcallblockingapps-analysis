.class public final Le/a/g/a/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/a/b/s;


# instance fields
.field public final synthetic a:Le/a/g/a/m;

.field public final synthetic b:Lcom/truecaller/acs/ui/ActionButtonType;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Lcom/truecaller/acs/ui/ActionButtonType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/acs/ui/ActionButtonType;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/a0;->a:Le/a/g/a/m;

    iput-object p2, p0, Le/a/g/a/a0;->b:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/a0;->a:Le/a/g/a/m;

    iget-object v1, p0, Le/a/g/a/a0;->b:Lcom/truecaller/acs/ui/ActionButtonType;

    invoke-virtual {v0, v1}, Le/a/g/a/m;->bg(Lcom/truecaller/acs/ui/ActionButtonType;)V

    return-void
.end method
