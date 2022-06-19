.class public abstract Le/a/x4/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/x4/l/a$c;,
        Le/a/x4/l/a$a;,
        Le/a/x4/l/a$b;,
        Le/a/x4/l/a$d;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;

.field public final b:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;Lcom/truecaller/data/entity/Contact;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/l/a;->a:Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;

    iput-object p2, p0, Le/a/x4/l/a;->b:Lcom/truecaller/data/entity/Contact;

    return-void
.end method
