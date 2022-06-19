.class public Le/a/e/d2/f;
.super Le/a/e/c2/i0;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final j:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-direct {p0, v1, v0, v2, v2}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Le/a/e/d2/f;->j:Lcom/truecaller/data/entity/Contact;

    return-void
.end method
