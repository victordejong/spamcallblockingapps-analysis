.class public final synthetic Le/a/w4/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/w4/s/b0;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/b0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/b;->a:Le/a/w4/s/b0;

    iput-object p2, p0, Le/a/w4/s/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/w4/s/b;->a:Le/a/w4/s/b0;

    iget-object v0, p0, Le/a/w4/s/b;->b:Ljava/util/List;

    .line 1
    iget-object p1, p1, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Le/a/w4/s/e0;->Of(Ljava/lang/String;)V

    return-void
.end method
