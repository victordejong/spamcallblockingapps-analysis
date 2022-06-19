.class public final Le/a/h/f/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/q;-><init>(Le/a/l4/c;Le/a/p5/c;Le/a/h/f/l0;Landroid/view/View;Le/a/h/f/d;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/g0;Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/f/q;


# direct methods
.method public constructor <init>(Le/a/h/f/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/f/q$c;->a:Le/a/h/f/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/f/q$c;->a:Le/a/h/f/q;

    .line 2
    iget-object v0, v0, Le/a/h/f/q;->s:Le/a/i/d/b;

    const-string v1, "CONTACTS"

    .line 3
    invoke-interface {v0, v1}, Le/a/i/d/b;->G3(Ljava/lang/String;)V

    return-void
.end method
