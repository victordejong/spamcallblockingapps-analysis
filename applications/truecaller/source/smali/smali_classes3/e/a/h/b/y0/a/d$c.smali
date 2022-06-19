.class public final Le/a/h/b/y0/a/d$c;
.super Le/a/h/b/y0/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/b/y0/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/h/b/y0/a/d;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/h/b/y0/a/d$c;->a:Lcom/truecaller/data/entity/Contact;

    return-void
.end method
