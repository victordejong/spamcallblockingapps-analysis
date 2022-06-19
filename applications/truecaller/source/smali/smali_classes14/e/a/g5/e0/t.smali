.class public final Le/a/g5/e0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/data/entity/Contact;

.field public final synthetic b:Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

.field public final synthetic c:Le/a/b0/p/c;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/tagger/tagPicker/TaggerViewModel;Le/a/b0/p/c;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/t;->a:Lcom/truecaller/data/entity/Contact;

    iput-object p2, p0, Le/a/g5/e0/t;->b:Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    iput-object p3, p0, Le/a/g5/e0/t;->c:Le/a/b0/p/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/g5/e0/t;->b:Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    .line 3
    iget-object p1, p1, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->f:Ln3/v/k0;

    .line 4
    new-instance v0, Le/a/g5/b0/a;

    new-instance v1, Ls1/o;

    iget-object v2, p0, Le/a/g5/e0/t;->c:Le/a/b0/p/c;

    iget-object v3, p0, Le/a/g5/e0/t;->a:Lcom/truecaller/data/entity/Contact;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v4}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Le/a/g5/b0/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    return-void
.end method
