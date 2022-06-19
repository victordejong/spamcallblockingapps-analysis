.class public Le/a/e/c/s1$j;
.super Le/a/e/c/s1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final f:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/e/c/s1$e;-><init>(Le/a/e/c/s1;Le/a/e/c/s1$a;)V

    .line 2
    iput-object p2, p0, Le/a/e/c/s1$j;->f:Lcom/truecaller/data/entity/Contact;

    return-void
.end method


# virtual methods
.method public b()Lcom/truecaller/data/entity/Contact;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$j;->f:Lcom/truecaller/data/entity/Contact;

    return-object v0
.end method
