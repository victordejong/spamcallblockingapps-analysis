.class public final synthetic Le/a/g5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Lcom/truecaller/tagger/TagPickActivity;

.field public final synthetic b:Le/a/b0/p/c;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/tagger/TagPickActivity;Le/a/b0/p/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g5/b;->a:Lcom/truecaller/tagger/TagPickActivity;

    iput-object p2, p0, Le/a/g5/b;->b:Le/a/b0/p/c;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le/a/g5/b;->a:Lcom/truecaller/tagger/TagPickActivity;

    iget-object v1, p0, Le/a/g5/b;->b:Le/a/b0/p/c;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Lcom/truecaller/tagger/TagPickActivity;->h:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, v1, p1}, Lcom/truecaller/tagger/TagPickActivity;->ra(Le/a/b0/p/c;Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
