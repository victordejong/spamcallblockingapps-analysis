.class public final Le/a/a/b/a$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->D6(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/a/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$p;->a:Le/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/b/a$p;->a:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v0, p2, v1, v0}, Le/a/a/b/p;->Yk(Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ZLjava/lang/Long;)V

    return-void
.end method
