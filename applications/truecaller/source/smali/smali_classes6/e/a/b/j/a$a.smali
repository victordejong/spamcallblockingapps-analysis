.class public final Le/a/b/j/a$a;
.super Le/a/b/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Z)V
    .locals 7

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;->AFTER_CALL:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/b/j/a;-><init>(Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/data/entity/Contact;ZZI)V

    return-void
.end method
