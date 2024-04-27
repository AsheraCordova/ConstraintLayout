// start - imports

export const enum BarrierImpl_barrierDirection {
start = "start",
end = "end",
left = "left",
right = "right",
top = "top",
bottom = "bottom",
}	
import CommandAttr from '../../widget/CommandAttr';
import IWidget from '../../widget/IWidget';
import ILayoutParam from '../../widget/ILayoutParam';
import {plainToClass, Type, Exclude, Expose, Transform} from "class-transformer";
import 'babel-polyfill';
import {Gravity} from '../../widget/TypeConstants';
import {ITranform, TransformerFactory} from '../../widget/TransformerFactory';
import {Event} from '../../app/Event';
import {MotionEvent} from '../../app/MotionEvent';
import {DragEvent} from '../../app/DragEvent';
import {KeyEvent} from '../../app/KeyEvent';
import { ScopedObject } from '../../app/ScopedObject';
import { Mixin, decorate } from 'ts-mixer';







// end - imports
import {ViewImpl} from './ViewImpl';
export abstract class BarrierImpl<T> extends ViewImpl<T>{
	//start - body
	static initialize() {
    }	
	@decorate(Type(() => CommandAttr))
	@decorate(Expose({ name: "barrierDirection" }))
	barrierDirection!:CommandAttr<BarrierImpl_barrierDirection>| undefined;
	@decorate(Type(() => CommandAttr))
	@decorate(Expose({ name: "constraint_referenced_ids" }))
	constraint_referenced_ids!:CommandAttr<string>| undefined;
	@decorate(Type(() => CommandAttr))
	@decorate(Expose({ name: "barrierMargin" }))
	barrierMargin!:CommandAttr<string>| undefined;
	@decorate(Type(() => CommandAttr))
	@decorate(Expose({ name: "barrierAllowsGoneWidgets" }))
	barrierAllowsGoneWidgets!:CommandAttr<boolean>| undefined;

	@decorate(Exclude())
	protected thisPointer: T;	
	protected abstract getThisPointer(): T;
	reset() : T {	
		super.reset();
		this.barrierDirection = undefined;
		this.constraint_referenced_ids = undefined;
		this.barrierMargin = undefined;
		this.barrierAllowsGoneWidgets = undefined;
		return this.thisPointer;
	}
	constructor(id: string, path: string[], event:  string) {
		super(id, path, event);
		this.thisPointer = this.getThisPointer();
	}
	

	public tryGetBarrierDirection() : T {
		this.resetIfRequired();
		if (this.barrierDirection == null || this.barrierDirection == undefined) {
			this.barrierDirection = new CommandAttr<BarrierImpl_barrierDirection>()
		}
		
		this.barrierDirection.setGetter(true);
		this.orderGet++;
		this.barrierDirection.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getBarrierDirection() : BarrierImpl_barrierDirection {
		if (this.barrierDirection == null || this.barrierDirection == undefined) {
			this.barrierDirection = new CommandAttr<BarrierImpl_barrierDirection>();
		}
		return this.barrierDirection.getCommandReturnValue();
	}
	public setBarrierDirection(value : BarrierImpl_barrierDirection) : T {
		this.resetIfRequired();
		if (this.barrierDirection == null || this.barrierDirection == undefined) {
			this.barrierDirection = new CommandAttr<BarrierImpl_barrierDirection>();
		}
		
		this.barrierDirection.setSetter(true);
		this.barrierDirection.setValue(value);
		this.orderSet++;
		this.barrierDirection.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetConstraint_referenced_ids() : T {
		this.resetIfRequired();
		if (this.constraint_referenced_ids == null || this.constraint_referenced_ids == undefined) {
			this.constraint_referenced_ids = new CommandAttr<string>()
		}
		
		this.constraint_referenced_ids.setGetter(true);
		this.orderGet++;
		this.constraint_referenced_ids.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getConstraint_referenced_ids() : string {
		if (this.constraint_referenced_ids == null || this.constraint_referenced_ids == undefined) {
			this.constraint_referenced_ids = new CommandAttr<string>();
		}
		return this.constraint_referenced_ids.getCommandReturnValue();
	}
	public setConstraint_referenced_ids(value : string) : T {
		this.resetIfRequired();
		if (this.constraint_referenced_ids == null || this.constraint_referenced_ids == undefined) {
			this.constraint_referenced_ids = new CommandAttr<string>();
		}
		
		this.constraint_referenced_ids.setSetter(true);
		this.constraint_referenced_ids.setValue(value);
		this.orderSet++;
		this.constraint_referenced_ids.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetBarrierMargin() : T {
		this.resetIfRequired();
		if (this.barrierMargin == null || this.barrierMargin == undefined) {
			this.barrierMargin = new CommandAttr<string>()
		}
		
		this.barrierMargin.setGetter(true);
		this.orderGet++;
		this.barrierMargin.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public getBarrierMargin() : string {
		if (this.barrierMargin == null || this.barrierMargin == undefined) {
			this.barrierMargin = new CommandAttr<string>();
		}
		return this.barrierMargin.getCommandReturnValue();
	}
	public setBarrierMargin(value : string) : T {
		this.resetIfRequired();
		if (this.barrierMargin == null || this.barrierMargin == undefined) {
			this.barrierMargin = new CommandAttr<string>();
		}
		
		this.barrierMargin.setSetter(true);
		this.barrierMargin.setValue(value);
		this.orderSet++;
		this.barrierMargin.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		

	public tryGetBarrierAllowsGoneWidgets() : T {
		this.resetIfRequired();
		if (this.barrierAllowsGoneWidgets == null || this.barrierAllowsGoneWidgets == undefined) {
			this.barrierAllowsGoneWidgets = new CommandAttr<boolean>()
		}
		
		this.barrierAllowsGoneWidgets.setGetter(true);
		this.orderGet++;
		this.barrierAllowsGoneWidgets.setOrderGet(this.orderGet);
		return this.thisPointer;
	}
	
	public isBarrierAllowsGoneWidgets() : boolean {
		if (this.barrierAllowsGoneWidgets == null || this.barrierAllowsGoneWidgets == undefined) {
			this.barrierAllowsGoneWidgets = new CommandAttr<boolean>();
		}
		return this.barrierAllowsGoneWidgets.getCommandReturnValue();
	}
	public setBarrierAllowsGoneWidgets(value : boolean) : T {
		this.resetIfRequired();
		if (this.barrierAllowsGoneWidgets == null || this.barrierAllowsGoneWidgets == undefined) {
			this.barrierAllowsGoneWidgets = new CommandAttr<boolean>();
		}
		
		this.barrierAllowsGoneWidgets.setSetter(true);
		this.barrierAllowsGoneWidgets.setValue(value);
		this.orderSet++;
		this.barrierAllowsGoneWidgets.setOrderSet(this.orderSet);
		return this.thisPointer;
	}
		
	//end - body

}
	
//start - staticinit

export class Barrier extends BarrierImpl<Barrier> implements IWidget{
    getThisPointer(): Barrier {
        return this;
    }
    
   	public getClass() {
		return Barrier;
	}
	
   	constructor(id: string, path: string[], event: string) {
		super(id, path, event);	
	}
}

BarrierImpl.initialize();

//end - staticinit
