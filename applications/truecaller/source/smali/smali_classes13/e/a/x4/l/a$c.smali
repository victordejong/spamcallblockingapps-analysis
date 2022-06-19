.class public final Le/a/x4/l/a$c;
.super Le/a/x4/l/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/x4/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;)V
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;->DETAILS_VIEW:Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Le/a/x4/l/a;-><init>(Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;Lcom/truecaller/data/entity/Contact;Ls1/z/c/f;)V

    return-void
.end method
